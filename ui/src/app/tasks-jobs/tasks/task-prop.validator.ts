import {UntypedFormControl} from '@angular/forms';

export class TaskPropValidator {
  static key(control: UntypedFormControl): any {
    const value = control.value;
    if (value && !value.startsWith('app.') && !value.startsWith('deployer.') && !value.startsWith('scheduler.')) {
      return {invalid: true};
    }
    return null;
  }
}
