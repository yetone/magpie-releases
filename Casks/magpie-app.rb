cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4712"
  sha256 arm:   "b46b121e89097161da5932112a4f908faa8cca65136886ea310091634624a7e3",
         intel: "f112a4a63f35db135143ffe23708b54f153f8c61f1d3789f364e2c91d46011c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
