interface queueInterface<Type> {
    enqueue(dataItem: Type): void;
    dequeue(): Type | undefined;
    isEmpty(): boolean;
    count(): number;
    printQueue(): void;
    peek(): Type | undefined;
    contains(dataItem: Type): boolean;
    clear(): void;
}

export class Queue<Type> implements queueInterface<Type> {
    private queueData: Array<Type> = [];

    constructor() {}

    isEmpty(): boolean {
        return this.queueData.length === 0;;
    }

    enqueue(dataItem: Type): void {
        this.queueData.push(dataItem);
    }

    dequeue(): Type | undefined {
        if (this.isEmpty()) {
            console.log('A fila está vazia');
            return;
        }
        return this.queueData.shift();
    }

    count(): number {
        return this.queueData.length;
    }

    printQueue(): void {
        for (let i = 0; i < this.queueData.length; i++) {
            console.log(this.queueData[i]);
        }
    }

    peek(): Type | undefined {
        if (this.isEmpty()) {
            console.log('A fila está vazia');
            return;
        }
        return this.queueData[0];
    }

    contains(dataItem: Type): boolean {
        return this.queueData.includes(dataItem);
    }

    clear(): void {
        this.queueData.length = 0;
    }
}