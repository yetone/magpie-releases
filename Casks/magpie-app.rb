cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3183"
  sha256 arm:   "f2675add833a836d726b9da5ab09c1e1c7ec6c678fa128644fb266512c79b382",
         intel: "50de2cceb60ccce3f89ab8bef3cbb6bd3b58aeee61ced636dc4dff98b109a87c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
