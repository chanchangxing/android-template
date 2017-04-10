package ${packageName}

import com.fa_zai.model.TasksRepository

class ${presenter}(val mTask: TasksRepository, mView: ${contract}.View): ${contract}.Presenter {
    override fun subscribe() {

    }

    init {
        mView.setPresenter(this)
    }
}