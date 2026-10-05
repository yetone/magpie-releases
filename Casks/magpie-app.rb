cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1055"
  sha256 arm:   "cbadf81d2eb5ea274ca0668bfe2b0e43f8deae7030a563b741698a32b7fa8811",
         intel: "59030cbcfd4fd756fa1270b0c8f20940f0529b50ad7141573e7f8ac25ac065b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
