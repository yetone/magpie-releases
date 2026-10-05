cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.942"
  sha256 arm:   "9a1da09e89afe9b16c89fa975206dedfbf35e02ee492e4ba17cd3038035d240c",
         intel: "4529f2912873ed13307a5d4d48a75c80c95afaf63b4a528ca0125d4a55799475"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
