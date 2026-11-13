cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3963"
  sha256 arm:   "4468b5b354e93e2fb731d923cfeec939d439de9a6431b571067fd26a2bfd489b",
         intel: "462482beaef4fd6ea70755b5a0b55dc03a70a996d003b5414dc836cae3cf3537"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
