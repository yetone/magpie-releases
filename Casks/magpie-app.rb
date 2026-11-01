cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2660"
  sha256 arm:   "01db2242056b17df418f53756cd99f0aaeefbc12c3ec8772ceb1abe9fc37d097",
         intel: "3a175bed88c234a9c12ae4df999522995d7015eeb01b9788f1651f109606860f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
