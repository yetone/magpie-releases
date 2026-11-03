cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2842"
  sha256 arm:   "022a8c9e6914889a79dcf2fe5296ad00ebae7c6ab6123f2c73972c0be7540aea",
         intel: "a09c072a7caf71558cceb050d1a65ca7546a12f43c3c120da254bf8fd3167a38"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
