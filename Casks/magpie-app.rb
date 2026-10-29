cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2100"
  sha256 arm:   "482e7749c1947fce11c3ead324a7e9258f7b83379ee412a52b7502598cd10cfa",
         intel: "03c4588231ceeee64d418f8ab6c17f08d2403d68fa00354519cc7ba7eaf525ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
