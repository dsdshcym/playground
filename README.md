# 简单问卷的设计和实现

假定有一个问卷系统（纯 API 项目），它目前仅实现了获取问卷的 API ，并可以获取这样一份问卷：

```js
// GET /v1/surveys/1
{
  id: 1,
  title: '程序员信仰测试',
  questions: [
    {
      id: 1,
      type: 'select',
      title: '请选择你最喜欢的语言',
      required: true,
      options: [
        {
          id: 1,
          content: 'PHP'
        },
        {
          id: 2,
          content: 'Ruby'
        },
        {
          id: 3,
          content: 'Elixir'
        },
        {
          id: 4,
          content: 'JavaScript'
        }
      ]
    },
    {
      id: 2,
      type: 'fill',
      title: '请填写你喜欢它的原因'
      required: false,
    }
  ]
}
```

上面的问卷有两题，第一题是选择题（支持多选），第二题是填空题。

## 要求

请使用 Elixir & Phoenix 建立上面的问卷项目，并完成以下几个目标：

### 目标 1 ：实现上述问卷获取的 API

请用静态数据实现，不需要为任何东西（比如问卷和题型）建模。问卷数据实际是为下面两个目标准备的。

### 目标 2 ：实现提交问卷回复的 API

请为上面的问卷设计一个提交回复的 API ，并把提交结果存入关系型数据库（建议 PostgreSQL 或 MySQL，如果你熟悉其他的也没问题）。以下东西你可以自行设计：

1. API 的 url ，提交数据的格式和返回格式
2. 回复相关的模型和数据库表结构

关于回复有几点需要注意：

1. 两题都是必填，即回复的提交数据里需要包含两题的答案，但填空题可以为空。这里为空的定义是提交数据里必须出现填空相关的 key ，但 value 可以为 `null` 或空字符串。
2. 选择题可以选一到多个选项。
3. 可以不考虑校验问题，比如非法提交。

### 目标 3 ：实现回复统计的 API

请实现一个 API ，统计上述问卷的回复情况，我们希望看到两个信息：

1. 第一个问题（选择题）的每个选项的选择人数，和百分比
2. 第二个问题（填空题）的非空回复的人数，和百分比

跟目标 2 一样，你可以自行设计 API 的 url 和返回数据的格式。
