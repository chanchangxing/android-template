package ${packageName};

import kotlinx.android.synthetic.main.${activitylayoutName}.*
import com.fa_zai.fazailawyer.R
import com.fa_zai.fazailawyer.utils.StatusBarUtil
import com.fa_zai.fazailawyer.view.BaseActivity
import com.fa_zai.model.TasksRepository

class ${activityClass}: BaseActivity(R.layout.${activitylayoutName}) {
    lateinit private var mPresenter: ${presenter}

    override fun initView() {
        var fragment: ${fragmentClass} ?= supportFragmentManager.findFragmentById(R.id.contentFrame) as? ${fragmentClass}
        if(fragment == null) {
            fragment = ${fragmentClass}()
            val transaction = supportFragmentManager.beginTransaction()
            transaction.add(R.id.contentFrame, fragment)
            transaction.commit()
        }
        mPresenter = ${presenter}(TasksRepository(this), fragment)
        StatusBarUtil.addEmptyStatusBar(this, layout_parent)
    }
}