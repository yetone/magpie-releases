cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4371"
  sha256 arm:   "7cd4130388c03c56b079a0211d304395a1b6f76bc30c0dbceabbd1f2995b1c65",
         intel: "97220f15c67e61ba96ee10b8d86c9ba80437d652a13fb893138699ac43812a6f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
