'use strict';
import * as vscode from 'vscode';
import * as style from "./decorations";

export function activate(context: vscode.ExtensionContext) {

    console.log('Congratulations, your extension "biosyntax" is now active!');

    let activeEditor = vscode.window.activeTextEditor;
    if(activeEditor){
        //console.log(activeEditor.document.languageId);
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
    
    function updateDecorations(){
        if (!activeEditor) {
			return;
        }
        let lang = activeEditor.document.languageId;
        let regEx: RegExp;
        if (lang === "clustal") {
            if (activeEditor.document.fileName.indexOf(".aln") === -1) {
                regEx = /([\w\.\-\_]*(?=[/ ])\/[0-9]*-[0-9]*\s+)([A-Za-z\-\.]+)/g;
            } else {
                regEx = /(\S+\s{2,})([A-Za-z\-\.]+\b).*/g;
            }
        } else {
            return;
        }
        const text = activeEditor.document.getText();
        const ntAs: vscode.DecorationOptions[] = [];
        const ntTs: vscode.DecorationOptions[] = [];
        const ntCs: vscode.DecorationOptions[] = [];
        const ntGs: vscode.DecorationOptions[] = [];
        const ntUs: vscode.DecorationOptions[] = [];
        const ntRs: vscode.DecorationOptions[] = [];
        const ntYs: vscode.DecorationOptions[] = [];
        const ntSs: vscode.DecorationOptions[] = [];
        const ntWs: vscode.DecorationOptions[] = [];
        const ntMs: vscode.DecorationOptions[] = [];
        const ntKs: vscode.DecorationOptions[] = [];
        const ntDs: vscode.DecorationOptions[] = [];
        const ntBs: vscode.DecorationOptions[] = [];
        const ntVs: vscode.DecorationOptions[] = [];
        const ntHs: vscode.DecorationOptions[] = [];
        const ntNs: vscode.DecorationOptions[] = [];
        const ntXs: vscode.DecorationOptions[] = [];
        const ntGaps: vscode.DecorationOptions[] = [];
        let match;
        while (match = regEx.exec(text)) {
            for (let index = match.index + match[1].length; index < match.index + match[0].length; index++)
            {
                let key = text[index].toUpperCase() 
                if (key==="A") {
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntAs.push(decoration);
                }else if(key==="T"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntTs.push(decoration);
                }else if(key==="G"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntGs.push(decoration);
                }else if(key==="C"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntCs.push(decoration);
                }else if(key==="U"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntUs.push(decoration);
                }else if(key==="R"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntRs.push(decoration);
                }else if(key==="Y"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntYs.push(decoration);
                }else if(key==="S"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntSs.push(decoration);
                }else if(key==="W"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntWs.push(decoration);
                }else if(key==="M"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntMs.push(decoration);
                }else if(key==="K"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntKs.push(decoration);
                }else if(key==="D"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntDs.push(decoration);
                }else if(key==="B"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntBs.push(decoration);
                }else if(key==="V"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntVs.push(decoration);
                }else if(key==="H"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntHs.push(decoration);
                }else if(key==="N"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntNs.push(decoration);
                }else if(key==="X"){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntXs.push(decoration);
                }else if(key==="-" || key==="."){
                    let decoration = {range: new vscode.Range(activeEditor.document.positionAt(index), activeEditor.document.positionAt(index+1))};
                    ntGaps.push(decoration);
                }
            }
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

export function deactivate() {
}