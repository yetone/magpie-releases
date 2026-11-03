cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2777"
  sha256 arm:   "2e73e159621e8244aa9f389ac81e05cedadc215ba1930f6e7cf7be9f53c20198",
         intel: "53929f534e70f45d6a56480c83798af2f4dd7c4d9d9f38717200d0fc148c655d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
