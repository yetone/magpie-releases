cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4771"
  sha256 arm:   "e98b2bf3fc02b530132cacfa3de2514229f51ac3b3bc0059aa2fdb6e7671e333",
         intel: "4657ca8afe2077be957680e303abfef812d287506dab1d4ea60f71d4967af012"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
