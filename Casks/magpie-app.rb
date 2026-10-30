cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2167"
  sha256 arm:   "a76ef98822875a89ccdba36098def7aaeb8c5661a3e48456e3697a26ba1d1b45",
         intel: "c2f45bf0f67725de903929443f87bbc648e8b7cc898a39b6919f7328659d3563"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
