cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3584"
  sha256 arm:   "85712357aa9cd21b35e8e9142a651253bcbeeeb9117fcabc0ee06172d0bbb7be",
         intel: "35000f6bb985a32fa05c97fe687cf2440c5c5f3285370e79f7d031824663c459"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
