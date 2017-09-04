package com.cappu.launcherwin.kookview;

import java.lang.reflect.Method;

import com.cappu.launcherwin.R;
import com.cappu.launcherwin.WeatherTimeLayout;
import com.cappu.launcherwin.WorkspaceUpdateReceiver;
import com.cappu.launcherwin.basic.theme.ThemeManager;
import com.cappu.launcherwin.widget.I99ThemeToast;

import android.app.Application;
import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo.State;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public class CappuKookView {
    private Context mContext;
    
    
    public View getView(final Context context, WorkspaceUpdateReceiver workspaceUpdateReceiver){
        this.mContext = context;
        LayoutInflater li = LayoutInflater.from(context);
        View v =null;
        if(ThemeManager.getInstance().getCurrentThemeType()==ThemeManager.THEME_NINE_GRIDS){
        	v = li.inflate(R.layout.cappu_view_nine, null);
        }else{
        	v = li.inflate(R.layout.cappu_view, null);
        }
        
        if(v instanceof WeatherTimeLayout){
            workspaceUpdateReceiver.initWeatherTimeLayout((WeatherTimeLayout)v);
        }
        
        return v;
    }
}
