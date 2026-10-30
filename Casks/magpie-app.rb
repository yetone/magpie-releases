cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2116"
  sha256 arm:   "1d264c71e273d1694ab5551f7f030a4c60e872e17200df1cdf9a7a0280fddfa0",
         intel: "59c9fd546bc5e7d9249fed64a0f7b83546c9bbb05f1c27482ec92d5c9e7758ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
