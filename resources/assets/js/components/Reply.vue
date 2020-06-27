<template>

</template>

<script>
    import flash from './Flash'
    export default {
        name: "Reply",
        props: ['attributes'],
        data() {
            return {
                editing: false,
                body: this.attributes.body
            }
        },
        methods: {
            update() {
                axios.patch('/replies/' + this.attributes.id, {
                    body: this.body
                });
                this.editing = false;
            },
            destroy() {
                    axios.delete('/replies/' + this.attributes.id);
                    $(this.$el).fadeOut(300);
            }
        }
    }
</script>

<style scoped>

</style>