cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4841"
  sha256 arm:   "dd9076fe944cf5b27e9bbd67707238dbb5c93abf9e0181e0f4d8ad81385873ee",
         intel: "ce54e38278161ce2b15426bf87b892bfed1112403ae9d5fbc793799ee716a445"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
