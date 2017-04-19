package ${packageName}

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.fa_zai.fazailawyer.R

class ${adapterClass}: RecyclerView.Adapter<${adapterClass}.ViewHolder>() {
	var onClickListener: OnClickListener ?= null
	var list: MutableList<Any> = ArrayList()
		set(value) {
			list.clear()
			list.addAll(value)
		}

	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${adapterClass}.ViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.${layoutName}, parent, false)
        return ViewHolder(view)
    }

	override fun onBindViewHolder(holder: ${adapterClass}.ViewHolder, position: Int) {
        holder.itemView.setOnClickListener {
            onClickListener!!.onClick(holder.adapterPosition)
        }
    }

	override fun getItemCount(): Int {
        return list!!.size
    }

	inner class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        
    }

    interface OnClickListener {
        fun onClick(position: Int)
    }
}