cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2403"
  sha256 arm:   "48da31a010ec989c0fba30391d36f3b2b95299777e285fea4bf5e0471b5ed845",
         intel: "28fc8ce32f10eef969a1e5e8f9d1e8c6f3453c9ae3082e76803268f7ebbdfbfc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
