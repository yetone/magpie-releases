cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1971"
  sha256 arm:   "f6db0364ac128a6af2fb9cb167d18df70ee5db6227ac1f4ac58d1f08ed6783ee",
         intel: "86b78b7b72f259ff287b1b5e0a6839d1659d48ddf560563221b8564a03ec55ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
