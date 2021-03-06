package com.mantismink.backgroundselection;

import android.content.Context;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;

public class SliderAdapter extends PagerAdapter {

    Context context;
            LayoutInflater layoutInflater;

            public SliderAdapter(Context context) {
                this.context=context;
            }

            //Arrays
    public int[] slide_images = {

                    R.drawable.flanco_white,
                    R.drawable.anbu_like,
                    R.drawable.shadow_black
            };

            public String[] slide_headings = {

                    "Welcome Anbu",
                    "Tell us what you liked",
                    "Ready Anbu"
            };

            public String[] slide_descs = {

                    "Welcome to Anbu Emojis Beta",
                    "Let us know how was your experience. Share and rate us on Google to help Grow Anbu.",
                    "Let's get started!"
            };

    @Override
    public int getCount() {
        return slide_headings.length;
    }

    @Override
    public boolean isViewFromObject(@NonNull View view, @NonNull Object object) {
        return view == (RelativeLayout) object;
    }

    @NonNull
    @Override
    public Object instantiateItem(@NonNull ViewGroup container, int position) {

        layoutInflater=(LayoutInflater) context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
        View view=layoutInflater.inflate(R.layout.slide_layout,container,false);

        
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     