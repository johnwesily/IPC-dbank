import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkBalance' : () => Promise<number>,
  'compound' : () => Promise<undefined>,
  'topUP' : (arg_0: number) => Promise<undefined>,
  'withDraw' : (arg_0: number) => Promise<undefined>,
}
