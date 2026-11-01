cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2582"
  sha256 arm:   "38296d08722fe63d97031777ed3488a74707680e3f4b76637157c92d6244a0ee",
         intel: "5819f24a6c7b65ed47ebe8be0412cdff68cf9daa481a3b119fc60d40b70e8b16"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
