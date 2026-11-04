cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2909"
  sha256 arm:   "cbb7bc5a612149d9b2f15c1aa79225d939ceba5de0024e7bbbf87c870f7218a1",
         intel: "e2c3c192814b8644ebf6344276865f1fad61b27c3d04b9f7ab77338b934ff97b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
