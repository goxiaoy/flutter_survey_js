import { VerticalPosition, HorizontalPosition } from "./utils/popup";

export interface IPopupOptionsBase {
  onHide?: () => void;
  onShow?: () => void;
  onApply?: () => boolean;
  onCancel?: () => void;
  cssClass?: string;
  title?: string;
  verticalPosition?: VerticalPosition;
  horizontalPosition?: HorizontalPosition;
  showPointer?: boolean;
  isModal?: boolean;
  displayMode?: "popup" | "overlay";
}
export interface IDialogOptions extends IPopupOptionsBase {
  componentName: string;
  data: any;
  onApply: () => boolean;
}
