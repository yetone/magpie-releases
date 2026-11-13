cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3990"
  sha256 arm:   "d185422c78ff823392494a6bc4ce783d29fce954b8452feae5d31768a446add9",
         intel: "0e0114988e6f55cb4f6df1a751ca6c4629f4b362ff55b8aa8028767e91eb670a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
