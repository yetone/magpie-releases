cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3096"
  sha256 arm:   "59642ecd7f23e207106e4238832f72f5e567bb3660d1b49fcfd5393c34781753",
         intel: "1b3c60012e15664212e76dba2e2c100d0a2bbd5e1f07f23637a6362878292f30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
