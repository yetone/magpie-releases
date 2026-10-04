cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.896"
  sha256 arm:   "9bb97ba3f547238fa561972b6ec443c0d34082c14f39188f9cb92dcd19a6116c",
         intel: "6b007999ca510e73d31220b522a87f7087af32d18a834c5339154ef54e303553"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
