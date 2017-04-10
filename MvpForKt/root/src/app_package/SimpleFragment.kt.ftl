package ${packageName}

import android.view.LayoutInflater
import android.view.ViewGroup
import android.os.Bundle
import android.view.View
import com.fa_zai.fazailawyer.R
import com.fa_zai.fazailawyer.view.BaseFragment

class ${fragmentClass}: BaseFragment(), ${contract}.View {
     lateinit private var mPresenter: ${contract}.Presenter

    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val view = inflater!!.inflate(R.layout.${fragmentLayoutName}, container, false)
        return view
    }

    override fun setPresenter(mPresenter: ${contract}.Presenter) {
        this.mPresenter = mPresenter
    }

    public override fun initView() {
        
    }
}