cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1838"
  sha256 arm:   "602dc1da1554b37d9249ad8d7eabe161b9852933bf711065631dff151ad1cc4b",
         intel: "f6ec55dc89e0f9afe867556a4585e36baf2f22334409f181a3f10b481107e8f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
