cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.931"
  sha256 arm:   "c833d53ce4e8b12003321211d1fc327d03eabe01c9f6ea24910e3ae340a4f4f6",
         intel: "33e7fd019d10cd6614448a1736974b16b41b9b6bf6466af25cb20cbf29b8e132"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
