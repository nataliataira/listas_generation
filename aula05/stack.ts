interface stackInterface<Type> {
    push(dataItem: Type): void;
    pop(): Type | undefined;
    isEmpty(): boolean;
    count(): number;
    printStack(): void;
    peek(): Type | undefined;
    contains(dataItem: Type): boolean;
    clear(): void;
}

export class Stack<Type> implements stackInterface<Type> {
    private stackData: Array<Type> = [];

    constructor() {}

    isEmpty(): boolean {
        return this.stackData.length === 0;
    }

    push(dataItem: Type): void {
        this.stackData.push(dataItem);
    }
  
    pop(): Type | undefined {
        if (this.isEmpty()) {
            console.log('A pilha está vazia');
            return;
        }
        return this.stackData.pop();
    }

    count(): number {
        return this.stackData.length;
    }

    printStack(): void {
        for (let i = 0; i < this.stackData.length; i++) {
            console.log(this.stackData[i]);
        }
    }
  
    peek(): Type | undefined {
        if (this.isEmpty()) {
            console.log('A pilha está vazia');
            return;
        }
        return this.stackData[this.stackData.length - 1];
    }

    contains(dataItem: Type): boolean {
        return this.stackData.includes(dataItem);
    }

    clear(): void {
        this.stackData.length = 0;
    }
}