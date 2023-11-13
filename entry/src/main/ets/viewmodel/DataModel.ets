import { CommonConstants } from '../common/constant/CommonConstant'

class DataModel {
  #tasks = CommonConstants.tasks

  /**
   * 获取Todo List数据
   * @returns Array<string>
   */
  getData():Array<string>{
    return this.#tasks
  }
}

export {
  DataModel
}