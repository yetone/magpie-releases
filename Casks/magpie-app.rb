cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2794"
  sha256 arm:   "b1beae9e6937dfd47faad0b5f8bf9d242f88a7d7aa9034982ae3f5aef36752f3",
         intel: "260eb46012d79a50dc6c4866d27654315c36a96eae6ad40d7cfb75bfa31f6d62"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
