<template>
    <sapi-dialog v-model="visible" width="500px" top="36%" @on-open="open" @on-close="close">
        <span slot="title" v-text="$t('projectType.editTypeTitle')"></span>
        <div class="form-error-tips"></div>
        <div class="form-content">
            <div class="fullline">
                <span class="w-65 must-star" v-text="$t('projectType.typeName')"></span>
                <div class="right-auto-box">
                    <el-input id="txtTypeName" v-model.trim="editModel.TypeName" :maxlength="100"></el-input>
                </div>
            </div>
            <div class="fullline">
                <span class="w-65 lh-30" v-text="$t('projectType.remark')"></span>
                <div class="right-auto-box">
                    <el-input type="textarea" :autosize="{ minRows: 2, maxRows: 4}" v-model="editModel.Remark" :maxlength="200"></el-input>
                </div>
            </div>
            <div class="fullline">
                <span class="w-65" v-text="$t('rowIndex')"></span>
                <div class="right-auto-box">
                    <el-input v-model="editModel.RowIndex" :min="0" :max="999999999" :controls="false" v-format.d="{default:0}"></el-input>
                </div>
            </div>
        </div>
        <div class="footer">
			<el-button size="small" class="default-button" @click="close" v-text="$t('cancel')"></el-button>
			<el-button class="blue-button" size="small" :disabled="disabled" @click="submit" v-text="$t('submit')"></el-button>			
		</div>
    </sapi-dialog>
</template>

<script>
    import tips from "@/components/sapi-tips.js";
	import dialog from "@/components/sapi-dialog.vue";

    export default {
        data() {
            return {
                disabled: false,
                visible: false,
                editModel: {
                }
            }
        },
        props: ["option","value"],
        methods: {
            open() {
                this.$get("/api/plat/projectTypes/" + this.option.TypeId, {}, function(res) {
                    this.editModel=res;
                });
            },
            close() {
                this.$closeWaringTips(".form-error-tips");
                this.$emit("input", false);
            },
            submit() {
                if(!this.validate()) {
                    return;
                }
                this.disabled = true;
                this.$put("/api/plat/projectTypes/", this.editModel, function(res) {
                    this.disabled = false;
                    this.$parent.loadData();
                    this.close();
                    Vue.successMsg(this.$t("projectType.editTypeSuccess"));
                });
            },
            validate() {
                this.$closeWaringTips(".form-error-tips");
                if(!this.editModel.TypeName) {
                    this.$errorTips(this.$t("projectType.typeNameNotBeEmpty"),"#txtTypeName");
                    return false;
                }        
                return true;
            }
        },
        components: {
            "sapi-dialog": dialog
        },
        watch: {
            value(val) {
                this.visible = val;
            }
        },
        created(){
            Vue.use(tips);
            this.visible=this.value;
        }
    }
</script>

<style>

</style>

