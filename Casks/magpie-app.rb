cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5007"
  sha256 arm:   "c08ef945a3a4dcf4fb584a19288d20c016f006b87b6ce552889139e09f448e6a",
         intel: "f226fd0480e7fc0e0344b030f8e880d0f4f7e8ca013ca4aee48764805c192d1d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
