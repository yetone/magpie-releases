cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2847"
  sha256 arm:   "d5b9b7d506dbf4a8f6cdf750889b49f3ff4d23738f3b4417c9adcba01460ef6a",
         intel: "1cf6db9ec9d0691ebe5425f5ee405d8a8f30a63e52397bcd7f9ad80a2f720842"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
