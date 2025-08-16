<template>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 py-6">
        <Card v-for="expert in experts" :key="expert.uuid" class="overflow-hidden group hover:shadow-lg transition-shadow duration-300">
            <CardHeader class="relative space-y-4 pb-2">
                <div class="flex items-center justify-between">
                    <Avatar class="h-16 w-16 ring-2 ring-offset-2 ring-primary/10">
                        <AvatarImage :src="expert?.profile_image" alt="expert profile image" />
                        <AvatarFallback class="text-lg font-medium bg-primary/5 capitalize">
                            {{expert.first_name?.charAt(0)}}{{expert.last_name?.charAt(0)}}
                        </AvatarFallback>
                    </Avatar>
                    <div :class="[
                        'px-3 py-1 rounded-full text-sm font-medium transition-colors',
                        expert.profile_claimed ? 'bg-green-100 text-green-700' : 'bg-yellow-100 text-yellow-700'
                    ]">
                        {{ expert?.profile_claimed ? 'Claimed' : 'Unclaimed' }}
                        {{ expert.profile_claimed }}
                    </div>
                </div>
                <div class="space-y-1">
                    <CardTitle class="text-xl font-semibold capitalize">
                        {{ expert.first_name }} {{ expert.last_name }}
                    </CardTitle>
                    <p class="text-sm font-medium text-primary/80">
                        {{ expert.area_of_expertise?.area_of_expertise || 'Expertise not specified' }}
                    </p>
                </div>
            </CardHeader>
            <CardContent class="space-y-4">
                <div class="flex items-center gap-2 text-sm text-gray-600">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M12 6v6m0 0v6m0-6h6m-6 0H6" />
                    </svg>
                    <span>{{ expert.experience || '0' }} years experience</span>
                </div>
                <div class="flex items-center gap-2 text-sm text-gray-600">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                    </svg>
                    <span>{{ expert.location || 'Location not specified' }}</span>
                </div>
                <div class="pt-4 flex justify-end">
                    <Button variant="outline" class="text-sm">View Profile</Button>
                </div>
            </CardContent>
        </Card>
    </div>
</template>

<script setup>
import { Card, CardHeader, CardContent, CardTitle, CardDescription } from '@/components/ui/card';
import { Avatar, AvatarImage, AvatarFallback } from '@/components/ui/avatar';
import { Button } from '@/components/ui/button';
import { useRuntimeConfig } from '#app';
import { ref } from 'vue';

const config = useRuntimeConfig();
const experts = ref([]);

const getExperts = async () => {
    const response = await fetch(`${config.public.apiBaseUrl}/experts/expert/recent_expert/`);
    const data = await response.json();
    if (data.results && Array.isArray(data.results) && data.results.length > 0) {
        experts.value = data.results[0];
    } else {
        experts.value = [];
    }
}
getExperts();

</script>