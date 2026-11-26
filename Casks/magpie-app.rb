cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4913"
  sha256 arm:   "ca49293835deb074a1a1fdfc214c950f5db72665247582aa7c325b76ee0af25b",
         intel: "e3764e54364fbb79bdcb59a5eb9414ce8ac6ea02f2e5eebdce80afb0d3b9334c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
