cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4449"
  sha256 arm:   "e94a2ad7425b9533ec6d3609c641a0b7ad0b6a35823dcafae3816c420570c4a9",
         intel: "7b07c823c7017ae57df4a4d8f59186f978c6c6559ba2c313b444990f8bda4e4a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
