import { Component, OnInit, Input} from '@angular/core';
import {MatDialog, MatDialogConfig } from '@angular/material/dialog';
import { TaskConfigurationModalComponent } from '../task-configuration-modal/task-configuration-modal.component';
import { DashboardService } from '../dashboard.service';
import { Task } from '../models/task';
import { DashboardItemComponent } from '../dashboardItem/dashboardItem.component;'

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {
  title='CVAT Dashboard';
  metaData: Object; //SHOULD THIS BE PRIVATE?
  taskData: Task[];

  constructor(private matDialog: MatDialog, private dashboardService: DashboardService) { }

  ngOnInit() {
    this.dashboardService.getTasks().subscribe(tasks=>(this.taskData=tasks));
  }

  dashboardCreateTaskButton() {
  /*  const dialogConfig = new MatDialogConfig();
    this.matDialog.open(TaskConfigurationModalComponent);
    */
    const dialogRef = this.matDialog.open(TaskConfigurationModalComponent, {
     width: '500px',
     /*data: {name: this.name, animal: this.animal}*/
   });
  }

  //tid stands for task id
  deleteTask(id: number){
    this.dashboardService.deleteTask(id).subscribe(
      (val) => {
        this.taskData.splice(id-1, 1);
        console.log(this.taskData);
      }
    );
  }

  navigateToUserGuide(){
    window.location.href="http://localhost:8080/documentation/user_guide.html";
  }


  ngAfterViewInit() {
      // DASHBOARD ENTRYPOINT

    //  this.startupService.get('.../../../../../backend/dashboard/meta').subscribe(
    //    this.startupService.get('/api/v1/tasks').subscribe(
    //    taskData => this.taskData=taskData,
    //    errorData => console.log('HTTP Error', errorData)

      //this.startupService.get('/dashboard/meta').subscribe(
      //metaData => this.metaData=metaData,
      //errorData => console.log('HTTP Error', this.metaData)
        /*errorData =>{
            $('#content').empty();
            const message = `Can not build CVAT dashboard. Code: ${errorData.status}. ` +
                `Message: ${errorData.responseText || errorData.statusText}`;
            showMessage(message);
        }*/
    //  );

/*
    //  this.startupService.get('.../../../../../backend/api/v1/tasks${window.location.search}').subscribe(
    this.startupService.get('/api/v1/tasks${window.location.search}').subscribe(
        taskData => this.taskData=taskData,
        errorData => console.log('HTTP Error', errorData)
        /*errorData =>{
            $('#content').empty();
            const message = `Can not build CVAT dashboard. Code: ${errorData.status}. ` +
                `Message: ${errorData.responseText || errorData.statusText}`;
            showMessage(message);
        }*/
//      );






/*
        when(
            // TODO: Use REST API in order to get meta
            //dashboard->app->src_>cvat->frontend->
            this.startupService.get('.../../../../../backend/dashboard/meta'),
            this.startupService.get(`.../../../../../backend/api/v1/tasks${window.location.search}`),
        ).then((metaData, taskData) => {
            try {
                new DashboardView(metaData[0], taskData[0]);
            }
            catch(exception) {
                $('#content').empty();
                const message = `Can not build CVAT dashboard. Exception: ${exception}.`;
                showMessage(message);
            }
        }).fail((errorData) => {
            $('#content').empty();
            const message = `Can not build CVAT dashboard. Code: ${errorData.status}. ` +
                `Message: ${errorData.responseText || errorData.statusText}`;
            showMessage(message);
        }).always(() => {
            $('#loadingOverlay').remove();
        });
        */
  }
}
