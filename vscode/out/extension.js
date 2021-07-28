'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
exports.deactivate = exports.activate = void 0;
const vscode = require("vscode");
const style = require("./decorations");
let beforeTheme = vscode.workspace.getConfiguration().get("BioSyntax.nonBioTheme");
function activate(context) {
    let activeEditor = vscode.window.activeTextEditor;
    if (activeEditor) {
        updateDecorations();
    }
    vscode.window.onDidChangeActiveTextEditor(editor => {
        activeEditor = editor;
        if (editor) {
            updateDecorations();
        }
    }, null, context.subscriptions);
    vscode.workspace.onDidChangeTextDocument(event => {
        if (activeEditor && event.document === activeEditor.document) {
            updateDecorations();
        }
    }, null, context.subscriptions);
    function updateDecorations() {
        if (!activeEditor) {
            return;
        }
        let lang = activeEditor.document.languageId;
        let regEx;
        const text = activeEditor.document.getText();
        const ntAs = [];
        const ntTs = [];
        const ntCs = [];
        const ntGs = [];
        const ntUs = [];
        const ntRs = [];
        const ntYs = [];
        const ntSs = [];
        const ntWs = [];
        const ntMs = [];
        const ntKs = [];
        const ntDs = [];
        const ntBs = [];
        const ntVs = [];
        const ntHs = [];
        const ntNs = [];
        const ntXs = [];
        const ntGaps = [];
        function updateDecorationArrays(key, decoration) {
            if (key === "A") {
                ntAs.push(decoration);
            }
            else if (key === "T") {
                ntTs.push(decoration);
            }
            else if (key === "G") {
                ntGs.push(decoration);
            }
            else if (key === "C") {
                ntCs.push(decoration);
            }
            else if (key === "U") {
                ntUs.push(decoration);
            }
            else if (key === "R") {
                ntRs.push(decoration);
            }
            else if (key === "Y") {
                ntYs.push(decoration);
            }
            else if (key === "S") {
                ntSs.push(decoration);
            }
            else if (key === "W") {
                ntWs.push(decoration);
            }
            else if (key === "M") {
                ntMs.push(decoration);
            }
            else if (key === "K") {
                ntKs.push(decoration);
            }
            else if (key === "D") {
                ntDs.push(decoration);
            }
            else if (key === "B") {
                ntBs.push(decoration);
            }
            else if (key === "V") {
                ntVs.push(decoration);
            }
            else if (key === "H") {
                ntHs.push(decoration);
            }
            else if (key === "N") {
                ntNs.push(decoration);
            }
            else if (key === "X") {
                ntXs.push(decoration);
            }
            else if (key === "-" || key === ".") {
                ntGaps.push(decoration);
            }
        }
        if (lang === "sam" || lang === "flagstat" || lang === "vcf" ||
            lang === "fasta" || lang === "fastq" || lang === "faidx" ||
            lang === "clustal" || lang === "pdb" || lang === "gtf" ||
            lang === "bed") {
            // update theme
            vscode.workspace.getConfiguration().update("workbench.colorTheme", "bioSyntax", true);
        }
        else {
            vscode.workspace.getConfiguration().update("workbench.colorTheme", beforeTheme, true);
        }
        if (lang === "clustal") {
            let lines = text.split("\n");
            let offset = 0;
            regEx = /\S+\s+(\S+)/;
            let line_offset = 0;
            for (let line_n in lines) {
                let line = lines[line_n];
                if (line_offset !== 0) {
                    let match = regEx.exec(line);
                    if (match) {
                        let col_1_len = match[0].length - match[1].length;
                        for (let index = 0; index < match[1].length; index++) {
                            let key = match[1][index].toUpperCase();
                            let start_pos = activeEditor.document.positionAt(col_1_len + offset + index);
                            let end_pos = activeEditor.document.positionAt(col_1_len + offset + index + 1);
                            let decoration = { range: new vscode.Range(start_pos, end_pos) };
                            updateDecorationArrays(key, decoration);
                        }
                    }
                }
                line_offset += 1;
                offset += (line.length + 1);
            }
        }
        else if (lang === "fasta") {
            let lines = text.split("\n");
            let offset = 0;
            for (let line_n in lines) {
                let line = lines[line_n];
                if (!line.startsWith(">")) {
                    for (let index = 0; index < line.length; index++) {
                        let key = line[index].toUpperCase();
                        let start_pos = activeEditor.document.positionAt(index + offset);
                        let end_pos = activeEditor.document.positionAt(index + offset + 1);
                        let decoration = { range: new vscode.Range(start_pos, end_pos) };
                        updateDecorationArrays(key, decoration);
                    }
                }
                offset += (line.length + 1);
            }
        }
        else if (lang === "fastq") {
            let lines = text.split("\n");
            let offset = 0;
            let nu = 0;
            for (let line_n in lines) {
                let line = lines[line_n];
                if (nu % 4 === 1) {
                    for (let index = 0; index < line.length; index++) {
                        let key = line[index].toUpperCase();
                        let start_pos = activeEditor.document.positionAt(index + offset);
                        let end_pos = activeEditor.document.positionAt(index + offset + 1);
                        let decoration = { range: new vscode.Range(start_pos, end_pos) };
                        updateDecorationArrays(key, decoration);
                    }
                }
                offset += (line.length + 1);
                nu++;
            }
        }
        else if (lang === "sam") {
            let lines = text.split("\n");
            let offset = 0;
            for (let line_n in lines) {
                let line = lines[line_n];
                if (!line.startsWith("@")) {
                    let items = line.split("\t");
                    let sub_offset = 0;
                    let tmp_probe = 0;
                    for (let sub_item in items) {
                        if (tmp_probe < 9) {
                            sub_offset += (items[sub_item].length + 1);
                        }
                        else if (tmp_probe === 9) {
                            for (let index = 0; index < items[sub_item].length; index++) {
                                let key = items[sub_item][index].toUpperCase();
                                let start_pos = activeEditor.document.positionAt(index + offset + sub_offset);
                                let end_pos = activeEditor.document.positionAt(index + offset + sub_offset + 1);
                                let decoration = { range: new vscode.Range(start_pos, end_pos) };
                                updateDecorationArrays(key, decoration);
                            }
                        }
                        else {
                            break;
                        }
                        tmp_probe += 1;
                    }
                }
                offset += (line.length + 1);
            }
        }
        else {
            return;
        }
        activeEditor.setDecorations(style.ntADecorationType, ntAs);
        activeEditor.setDecorations(style.ntTDecorationType, ntTs);
        activeEditor.setDecorations(style.ntGDecorationType, ntGs);
        activeEditor.setDecorations(style.ntCDecorationType, ntCs);
        activeEditor.setDecorations(style.ntUDecorationType, ntUs);
        activeEditor.setDecorations(style.ntRDecorationType, ntRs);
        activeEditor.setDecorations(style.ntYDecorationType, ntYs);
        activeEditor.setDecorations(style.ntSDecorationType, ntSs);
        activeEditor.setDecorations(style.ntWDecorationType, ntWs);
        activeEditor.setDecorations(style.ntMDecorationType, ntMs);
        activeEditor.setDecorations(style.ntKDecorationType, ntKs);
        activeEditor.setDecorations(style.ntDDecorationType, ntDs);
        activeEditor.setDecorations(style.ntBDecorationType, ntBs);
        activeEditor.setDecorations(style.ntVDecorationType, ntVs);
        activeEditor.setDecorations(style.ntHDecorationType, ntHs);
        activeEditor.setDecorations(style.ntNDecorationType, ntNs);
        activeEditor.setDecorations(style.ntXDecorationType, ntXs);
        activeEditor.setDecorations(style.ntGapDecorationType, ntGaps);
    }
}
exports.activate = activate;
function deactivate() {
}
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map