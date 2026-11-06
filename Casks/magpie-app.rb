cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3143"
  sha256 arm:   "e9834a92f995646533b8eadcd187d9b64deae8d5ca3e1d6706f644e7718b2782",
         intel: "0c9612a778d2032068dee62f24206e6bb7e74b4e4c183869480f1f94a9dca510"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
