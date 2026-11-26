cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4842"
  sha256 arm:   "6cba7f4b3f8295d8fbebe3f365d43a5e5e4d653fec6b3c029262e13dcabc195d",
         intel: "62e70040a277afff95c9c66d1f1fe797e20e78e1014d24b873bbfb71a1ca3efc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
