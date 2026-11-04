cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2956"
  sha256 arm:   "6b401381648af6369396567ef2222fea0fc1523d1b41d8cba44c7690afbcc1fb",
         intel: "c500ca8d5741f5e8324487ad37f8973c1e0020d50e9ea630adb89e899237c910"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
