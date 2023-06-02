import { Entity } from '@loopback/repository';
export declare class Todo extends Entity {
    id?: number;
    title: string;
    desc?: string;
    isComplete?: boolean;
    constructor(data?: Partial<Todo>);
}
export interface TodoRelations {
}
export type TodoWithRelations = Todo & TodoRelations;
