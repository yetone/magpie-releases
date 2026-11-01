cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2557"
  sha256 arm:   "26361d3cddb58fabca9e7951f64545965742b88680330bfb3edb7a9097a91100",
         intel: "2f6f831e7756cbaa2c730a96a79aa7b66b3b246a104b6f714ce0e49417a61eb1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
