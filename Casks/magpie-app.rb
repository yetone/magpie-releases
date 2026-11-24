cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4769"
  sha256 arm:   "6215cf68ae606080d995f488d0c1f565932e938f9c37509d107cd5751bb5c631",
         intel: "fdabe41a9c2deebff498088e150c51ea67b727474657fab2f5af94af33928a48"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
