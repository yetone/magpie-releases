cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4424"
  sha256 arm:   "5a350b7c57e5235d83ed20b3836323b8ebf5a628ce8e2dbf51d3828097be2416",
         intel: "3aa07f8acff4725d38f25c036ed6c9a6cc9379793acbf6d6e0c50752f033cfe1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
