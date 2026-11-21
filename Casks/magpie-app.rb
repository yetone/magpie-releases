cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4643"
  sha256 arm:   "a83a147a45219134b6546d2e868508771e369dacb5a5317a5b949e19ecd1ed13",
         intel: "5ff6b18c5d2f8c98b082f84771b90ebcdc9332a0424e32a17cb9634f2f4377bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
