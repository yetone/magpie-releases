cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1070"
  sha256 arm:   "6dad4a17e4a4e7b5b2f2eb3d0d309db3671f0ce70874fbfc4a5e6e36049da699",
         intel: "5b3fb3316569bf4e55aa1a707e1e9eb64bd1c977e9bdee1d293baa5e8dd217b7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
