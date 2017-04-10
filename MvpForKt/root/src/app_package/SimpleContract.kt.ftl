package ${packageName}

import com.fa_zai.fazailawyer.view.BasePresenter
import com.fa_zai.fazailawyer.view.BaseView


interface ${contract} {
    interface View : BaseView {
        fun setPresenter(mPresenter: ${contract}.Presenter)
    }

    interface Presenter : BasePresenter {
        
    }
}