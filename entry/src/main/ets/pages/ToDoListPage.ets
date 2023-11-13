import { ToDoItem } from '../view/ToDoItem';
import { DataModel } from '../viewmodel/DataModel';

@Entry
@Component
struct ToDoListPage {
  private totalTasks: string[] = [];

  aboutToAppear() {
    this.totalTasks = new DataModel().getData()
  }

  build() {
    Column({ space: 16 }) {
      Text($r('app.string.page_title'))
        .fontSize('28fp')
        .fontWeight(FontWeight.Bold)
        .lineHeight('33vp')
        .width('93.3%')
        .margin({
          top: '24vp',
          bottom: '12vp'
        })
        .textAlign(TextAlign.Start)

      ForEach(this.totalTasks, (item: string) => {
        ToDoItem({ content: item })
      }, (item: string) => JSON.stringify(item))
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')
  }
}