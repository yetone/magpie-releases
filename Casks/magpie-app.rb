cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3562"
  sha256 arm:   "510487651fca6ff273c3efd82e9518af688502822a4a1dfd205b229fa2a7290b",
         intel: "3f7033eb7cfc51a75c038f52de2e5ca9f0cab93a3918f7bdea20cafcb1124f7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
