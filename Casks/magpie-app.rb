cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1090"
  sha256 arm:   "94f82a42b4fd04a30a9944f90e2d1625f5bd659f933b032229e6913c88565c65",
         intel: "20172c4d3c72d04fd9c16d1962998d5a97decb5c46d42ac1d93bb1a24b44d14b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
