$("#formValidation").validate({
  rules: {
    name: {
      required: true,
      minlength: 6,
    },
    email: {
      email: true,
    },
  },
  messages: {
    name: {
      required: "Please enter your name",
      minlength: "Name at least 6 characters",
    },
    email: "Please enter your email",
  },

  submitHandler: function (form) {
    form.submit();
  },
});
